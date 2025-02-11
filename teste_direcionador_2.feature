#language: pt
Funcionalidade: Experiência do entregador e feedback estruturado
Como um entregador do Rappi
Quero um mecanismo nativo de feedback dentro do app
Para que eu possa fornecer minhas opiniões e melhorar a experiência de todos

    Cenário: Coleta de feedback mensal
    Dado que o entregador está utilizando o app
    Quando o entregador acessa o mecanismo de feedback
    Então o sistema deve garantir que pelo menos 50% dos entregadores ativos forneçam feedback mensalmente

    Cenário: Análise de respostas de formulários
    Dado que as respostas aos formulários de feedback foram coletadas
    Quando o sistema processa essas respostas
    Então as respostas devem ser coletadas automaticamente e analisadas com base em tendências de churn e insatisfação

    Cenário: Monitoramento da taxa de resposta
    Dado que o sistema está monitorando a taxa de resposta dos feedbacks
    Quando a taxa de resposta cai abaixo de 30%
    Então um alerta deve ser gerado para incentivar novas pesquisas
