const express = require('express')
const app = express()
const PORT = 4000

let feedbacks = []

// Registra feedback dos entregadores
app.post('/feedback', (req, res) => {
  const feedback = req.body
  feedbacks.push(feedback)
  res.status(200).send('Feedback registrado com sucesso')
})

// Monitoramento da taxa de resposta
setInterval(() => {
  const feedbackRate = (feedbacks.length / getTotalActiveDeliveries()) * 100
  if (feedbackRate < 30) {
    console.log('Taxa de resposta de feedback caiu abaixo de 30%')
  }
}, 30 * 24 * 60 * 60 * 1000) // Obtém a quantidade de milissegundos em um mês

// Função para obter o número total de entregadores ativos (simulação)
function getTotalActiveDeliveries() {
  return 5 
}

app.listen(PORT, () => {
  console.log(`Servidor iniciado na porta ${PORT}`)
})
