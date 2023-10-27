from gen_database_cursadas import gera_database
import subprocess
import sys

def run_prolog():
    comando = "swipl -s src/main.pl"
    processo = subprocess.Popen(comando, shell=True)
    processo.wait()

if __name__ == "__main__":
    path = sys.argv[1]
    
    gera_database(path)
    run_prolog()