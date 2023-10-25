import tabula
import pandas as pd
from unidecode import unidecode

# le as tabelas dado um nome de arquivo pdf
def read_pdf(pdf_file_name):
    lista_tabelas = tabula.read_pdf(pdf_file_name, pages = ['all'], multiple_tables= True)
    tabelas = []

    for i in lista_tabelas:
        componente = (i.iloc[0] == 'Componente Curricular').any()
        nota = (i.iloc[0] == 'Nota').any()
        if componente and nota:
            tabelas.append(i)
            
    return format_tables(tabelas)
 
# faz tratamento das tabelas lidas           
def format_tables(tabelas):
    list_columns = ['Ano/Periodo Letivo', 'Componente', 'Codigo', 'Nome', 'CH', 'Turma', 'Freq %', 'Nota', 'Situacao']
    situacao_aceitas = ['CUMP', 'APR', 'MATR']
    colunas_fixas = ['Codigo', 'Nome']
    tabelas_formatadas = []

    for tabela in tabelas:
        try:
            if len(tabela.columns) == 10:
                del tabela['Unnamed: 3']
            
            tabela.drop([0, 1], inplace=True)
            tabela.columns = list_columns
            
            tabela = tabela[tabela['Situacao'].isin(situacao_aceitas)]
            
            tabela = tabela[colunas_fixas]
            tabela.reset_index(drop=True, inplace=True)
            tabelas_formatadas.append(tabela)
        except Exception as e:
            print('Erro: ', e)
            pass
        
    tabela_final = pd.concat(tabelas_formatadas, ignore_index=True)
    
    return tabela_final

# transforma dataframe e base de dados prolog
def dataframe_to_prolog(df, database_name):
    prolog_db = []

    # fatos Prolog para cada linha do DataFrame
    for index, row in df.iterrows():
        codigo = row['Codigo']
        nome = row['Nome']

        # fatos Prolog formatado
        fato = f'disciplina_cursada("{codigo}", "{nome}").'

        prolog_db.append(fato)

    # arquivo do banco de dados Prolog
    with open(f'{database_name}.pl', 'w') as file:
        for linha in prolog_db:
            file.write(linha + '\n')
            
def main():
    df_final = read_pdf('historico_joao.pdf')
    
    #retira caracteres especiais
    #df_final['Nome'].apply(unidecode)
    
    dataframe_to_prolog(df_final, 'disciplinas_cursadas')
    
if __name__ == '__main__':
    main()
    
    