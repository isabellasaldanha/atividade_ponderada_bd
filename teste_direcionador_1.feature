#language: pt
Funcionalidade: Eficiência do onboarding
Como um novo entregador do Rappi
Quero que o processo de onboarding seja rápido e eficiente
Para que eu possa começar a trabalhar o mais rápido possível

    Cenário: Conclusão do onboarding em menos de 5 minutos
    Dado que o novo entregador está iniciando o processo de onboarding
    Quando o entregador completa cada etapa do processo de onboarding
    Então o processo completo deve ser concluído em menos de 5 minutos para 90% dos novos entregadores

    Cenário: Monitoramento dos pontos de abandono
    Dado que o novo entregador está no processo de onboarding
    Quando o entregador abandona o processo
    Então o sistema deve detectar e registrar os momentos de maior abandono dentro do processo

    Cenário: Taxa de conclusão do onboarding
    Dado que novos entregadores estão realizando o onboarding
    Quando o onboarding é concluído
    Então a taxa de conclusão do onboarding deve ser maior que 85%
    E se a taxa de conclusão for menor que 85%, os pontos de abandono devem ser identificados e indicados
