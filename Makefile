.PHONY: lint format test run ALL

POETRY = poetry
RUFF = $(POETRY) run ruff
PYTEST = $(POETRY) run pytest

ALL: lint test

lint:
	@echo "=== Executando o Linter e Formatador (Ruff) ==="
	$(RUFF) check . --fix
	$(RUFF) format .

test:
	@echo "=== Executando a Suite de Testes (Pytest) ==="
	$(PYTEST)

run:
	@echo "=== Iniciando a Aplicação ==="
	$(POETRY) run python src/main.py