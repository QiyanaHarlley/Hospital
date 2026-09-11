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

		// Chamada da função para avaliar a febre
		classificarFebre(temperatura)

		// Chamada da função para classificar a prioridade
		classificarAtendimento(idade, temperatura)

		// Chamada da NOVA FUNÇÃO para estimar o tempo de espera
		estimarTempoEspera(idade, temperatura)
	}

	// Função responsável por detalhar a condição térmica do paciente
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

	// Função responsável pela verificação do status de prioridade
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

	// NOVA FUNÇÃO: Calcula o tempo estimado de espera de acordo com o risco
	funcao estimarTempoEspera(inteiro idade, real temperatura)
	{
		escreva("--- ESTIMATIVA DE ATENDIMENTO ---\n")
		
		// Casos graves / Prioridade Alta
		se (temperatura >= 39.0 ou temperatura < 35.5)
		{
			escreva("Tempo Estimado: Atendimento Imadiato (0 a 10 minutos)\n")
		}
		// Idosos sem febre alta
		senao se (idade >= 60)
		{
			escreva("Tempo Estimado: Até 30 minutos\n")
		}
		// Casos com febre moderada
		senao se (temperatura >= 37.8)
		{
			escreva("Tempo Estimado: Até 60 minutos\n")
		}
		// Casos comuns
		senao
		{
			escreva("Tempo Estimado: Até 120 minutos (2 horas)\n")
		}
	}
}