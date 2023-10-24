import PyPDF2
import tabula

pdf_path = 'historico_XXX.pdf'
texto_alvo = 'Legenda'

# Função para extrair informações de uma parte específica do PDF
def extrair_informacoes_especificas(pdf_reader):
    for page_num in range(len(pdf_reader.pages)):
        page = pdf_reader.pages[page_num]
        page_text = page.extract_text()

        if texto_alvo in page_text:
            return page_num

    return None  # Retorna None se o texto não for encontrado em nenhuma página

pdf_file = open(pdf_path, 'rb')
pdf_reader = PyPDF2.PdfReader(pdf_file)

pg_final = extrair_informacoes_especificas(pdf_reader)

pg_list = []
for i in range (pg_final + 1):
    pg_list.append(str(i + 1))

tabelas = tabula.read_pdf(pdf_file, pages=pg_list)  # Pode especificar as páginas ou 'all' para todas
print(len(tabelas))