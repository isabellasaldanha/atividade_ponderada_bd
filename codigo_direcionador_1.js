const express = require('express')
const app = express()
const PORT = 3000

// Configuração de tempo máximo para conclusão do onboarding (5 minutos)
const maxOnboardingTime = 5 * 60 * 1000 

// Mede o tempo de onboarding
app.use((req, res, next) => {
  req.startTime = Date.now()
  next()
})

// Endpoint do processo de onboarding
app.post('/onboarding', (req, res) => {
  setTimeout(() => {
    const duration = Date.now() - req.startTime
    if (duration <= maxOnboardingTime) {
      res.status(200).send(`Onboarding concluído em ${duration / 1000} segundos`)
    } else {
      res.status(400).send(`Onboarding excedeu o tempo máximo de ${maxOnboardingTime / 1000} segundos`)
    }
  }, 20000) // Simula um processo de 20 segundos
})

// Monitora pontos de abandono
app.use((req, res, next) => {
  if (res.statusCode === 400) {
    console.log(`Abandono detectado: ${req.originalUrl}`)
  }
  next()
})

// Inicia o servidor
app.listen(PORT, () => {
  console.log(`Servidor iniciado na porta ${PORT}`)
})
