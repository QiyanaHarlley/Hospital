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