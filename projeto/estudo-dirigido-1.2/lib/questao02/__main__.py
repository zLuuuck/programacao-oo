from __produto__ import Produto

# Teste da classe
if __name__ == "__main__":
    # Produto válido
    p1 = Produto("Celular", 1500.0, 10)
    p1.exibir_ficha()

    # Tentativa de criar produto com nome vazio (lança exceção)
    try:
        p2 = Produto("", 100.0, 5)
    except ValueError as e:
        print(e)  # O nome não pode ser vazio.

    # Tentativa de alterar preço para negativo via setter
    try:
        p1.preco = -50.0
    except ValueError as e:
        print(e)  # O preço não pode ser negativo.