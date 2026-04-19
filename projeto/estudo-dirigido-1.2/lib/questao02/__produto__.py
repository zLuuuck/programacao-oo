class Produto:
    def __init__(self, nome: str, preco: float, estoque: int):
        self._nome = nome
        self._preco = preco
        self._estoque = estoque
        self._validar()  # valida após a inicialização

    def _validar(self):
        """Método privado de validação de todos os campos."""
        if not self._nome or self._nome.strip() == "":
            raise ValueError("O nome não pode ser vazio.")
        if self._preco < 0:
            raise ValueError("O preço não pode ser negativo.")
        if self._estoque < 0:
            raise ValueError("O estoque não pode ser negativo.")

    # Getters e Setters no estilo Python (property)
    @property
    def nome(self) -> str:
        return self._nome

    @nome.setter
    def nome(self, valor: str):
        if not valor or valor.strip() == "":
            raise ValueError("O nome não pode ser vazio.")
        self._nome = valor

    @property
    def preco(self) -> float:
        return self._preco

    @preco.setter
    def preco(self, valor: float):
        if valor < 0:
            raise ValueError("O preço não pode ser negativo.")
        self._preco = valor

    @property
    def estoque(self) -> int:
        return self._estoque

    @estoque.setter
    def estoque(self, valor: int):
        if valor < 0:
            raise ValueError("O estoque não pode ser negativo.")
        self._estoque = valor

    # Métodos de negócio
    def repor(self, qtd: int):
        if qtd < 0:
            print("Quantidade para reposição deve ser positiva.")
            return
        self._estoque += qtd

    def vender(self, qtd: int):
        if qtd <= 0:
            print("Quantidade para venda deve ser positiva.")
            return
        if qtd <= self._estoque:
            self._estoque -= qtd
        else:
            print("Estoque insuficiente")

    def exibir_ficha(self):
        print(f"Nome: {self._nome} | Preço: {self._preco} | Estoque: {self._estoque}")


