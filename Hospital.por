programa
{
	funcao inicio()
	{
		cadeia nome
		inteiro idade
		real temperatura

		escreva("=== TRIAGEM HOSPITALAR ===\n")
		
		escreva("Digite o nome do paciente: ")
		leia(nome)
		
		escreva("Digite a idade do paciente: ")
		leia(idade)
		
		escreva("Digite a temperatura do paciente (°C): ")
		leia(temperatura)

		escreva("\n=== FICHA DE ATENDIMENTO ===\n")
		escreva("Paciente: ", nome, "\n")
		escreva("Idade: ", idade, " anos\n")
		escreva("Temperatura: ", temperatura, "°C\n")

		// Chamada da nova função para avaliar a febre
		classificarFebre(temperatura)

		// Chamada da função enviando a idade e a temperatura como parâmetros
		classificarAtendimento(idade, temperatura)
	}

	// Nova função responsável por detalhar a condição térmica do paciente
	funcao classificarFebre(real temperatura)
	{
		se (temperatura < 35.5)
		{
			escreva("Condição Térmica: Hipotermia\n")
		}
		senao se (temperatura < 37.3)
		{
			escreva("Condição Térmica: Normal (Afebril)\n")
		}
		senao se (temperatura < 37.8)
		{
			escreva("Condição Térmica: Estado Subfebril\n")
		}
		senao
		{
			escreva("Condição Térmica: Febre\n")
		}
	}

	// Função responsável exclusivamente pela verificação do status de prioridade
	funcao classificarAtendimento(inteiro idade, real temperatura)
	{
		se (temperatura >= 39.0 ou idade >= 60)
		{
			escreva("Status: ATENDIMENTO PRIORITÁRIO\n")
			escreva("Orientação: Encaminhar imediatamente para o consultório de emergência.\n")
		}
		senao
		{
			escreva("Status: ATENDIMENTO REGULAR\n")
			escreva("Orientação: Aguardar chamada na recepção.\n")
		}
	}
}