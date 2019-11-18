# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Escala de Braden
braden = Escala.create(nome: 'Escala de Braden')

# Interpretaçoes da escala de Braden
Interpretacao.create(nome: 'Sem Risco', valor_minimo: 17, valor_maximo: 23, escala_id: braden.id)
Interpretacao.create(nome: 'Risco Leve', valor_minimo: 15, valor_maximo: 16, escala_id: braden.id)
Interpretacao.create(nome: 'Risco Moderado', valor_minimo: 12, valor_maximo: 14, escala_id: braden.id)
Interpretacao.create(nome: 'Risco Alto', valor_minimo: 6, valor_maximo: 11, escala_id: braden.id)

# Parametros da escala de Braden
parametro1b = Parametro.create(nome: 'Percepção Sensorial', escala_id: braden.id)
parametro2b = Parametro.create(nome: 'Umidade', escala_id: braden.id)
parametro3b = Parametro.create(nome: 'Atividade', escala_id: braden.id)
parametro4b = Parametro.create(nome: 'Mobilidade', escala_id: braden.id)
parametro5b = Parametro.create(nome: 'Nutrição', escala_id: braden.id)
parametro6b = Parametro.create(nome: 'Fricção e cisalhamento', escala_id: braden.id)

# Respostas dos parametros da escala de Braden
Resposta.create(nome: 'Totalmente Limitado', pontuacao: 1, parametro_id: parametro1b.id)
Resposta.create(nome: 'Muito Limitado', pontuacao: 2, parametro_id: parametro1b.id)
Resposta.create(nome: 'Pouco Limitado', pontuacao: 3, parametro_id: parametro1b.id)
Resposta.create(nome: 'Nenhuma Limitação', pontuacao: 4, parametro_id: parametro1b.id)

Resposta.create(nome: 'Completamente molhado', pontuacao: 1, parametro_id: parametro2b.id)
Resposta.create(nome: 'Muito Molhado', pontuacao: 2, parametro_id: parametro2b.id)
Resposta.create(nome: 'Ocasionalmente molhado', pontuacao: 3, parametro_id: parametro2b.id)
Resposta.create(nome: 'Raramente molhado', pontuacao: 4, parametro_id: parametro2b.id)

Resposta.create(nome: 'Acamado', pontuacao: 1, parametro_id: parametro3b.id)
Resposta.create(nome: 'Confinado à cadeira', pontuacao: 2, parametro_id: parametro3b.id)
Resposta.create(nome: 'Caminha ocasionalmente', pontuacao: 3, parametro_id: parametro3b.id)
Resposta.create(nome: 'Caminha frequentemente', pontuacao: 4, parametro_id: parametro3b.id)

Resposta.create(nome: 'Totalmente imóvel', pontuacao: 1, parametro_id: parametro4b.id)
Resposta.create(nome: 'Muito Limitado', pontuacao: 2, parametro_id: parametro4b.id)
Resposta.create(nome: 'Pouco Limitado', pontuacao: 3, parametro_id: parametro4b.id)
Resposta.create(nome: 'Nenhuma Limitação', pontuacao: 4, parametro_id: parametro4b.id)

Resposta.create(nome: 'Muito pobre', pontuacao: 1, parametro_id: parametro5b.id)
Resposta.create(nome: 'Inadequada', pontuacao: 2, parametro_id: parametro5b.id)
Resposta.create(nome: 'Adequada', pontuacao: 3, parametro_id: parametro5b.id)
Resposta.create(nome: 'Excelente', pontuacao: 4, parametro_id: parametro5b.id)

Resposta.create(nome: 'Problema', pontuacao: 1, parametro_id: parametro6b.id)
Resposta.create(nome: 'Problema potencial', pontuacao: 2, parametro_id: parametro6b.id)
Resposta.create(nome: 'Sem problema', pontuacao: 3, parametro_id: parametro6b.id)


# Escala de Glasgow
ecg = Escala.create(nome: 'Escala de Coma de Glasgow')

# Interpretaçoes da escala de Glasgow
Interpretacao.create(nome: 'Trauma Grave', valor_minimo: 3, valor_maximo: 8, escala_id: ecg.id)
Interpretacao.create(nome: 'Trauma Moderado', valor_minimo: 9, valor_maximo: 12, escala_id: ecg.id)
Interpretacao.create(nome: 'Trauma Grave', valor_minimo: 13, valor_maximo: 15, escala_id: ecg.id)

# Parametros da escala de Glasgow
parametro1ecg = Parametro.create(nome: 'Abertura Ocular', escala_id: ecg.id)
parametro2ecg = Parametro.create(nome: 'Resposta Verbal', escala_id: ecg.id)
parametro3ecg = Parametro.create(nome: 'Resposta Motora', escala_id: ecg.id)

# Respostas dos parametros da escala de Glasgow
Resposta.create(nome: 'Nenhuma resposta', pontuacao: 1, parametro_id: parametro1ecg.id)
Resposta.create(nome: 'Responde ao estímulo doloroso', pontuacao: 2, parametro_id: parametro1ecg.id)
Resposta.create(nome: 'Responde ao estímulo verbal', pontuacao: 3, parametro_id: parametro1ecg.id)
Resposta.create(nome: 'Resposta espontânea', pontuacao: 4, parametro_id: parametro1ecg.id)

Resposta.create(nome: 'Nenhuma resposta', pontuacao: 1, parametro_id: parametro2ecg.id)
Resposta.create(nome: 'Sons incompreensíveis', pontuacao: 2, parametro_id: parametro2ecg.id)
Resposta.create(nome: 'Palavras inapropriadas', pontuacao: 3, parametro_id: parametro2ecg.id)
Resposta.create(nome: 'Resposta confusa', pontuacao: 4, parametro_id: parametro2ecg.id)
Resposta.create(nome: 'Resposta orientada', pontuacao: 5, parametro_id: parametro2ecg.id)

Resposta.create(nome: 'Nenhuma resposta', pontuacao: 1, parametro_id: parametro3ecg.id)
Resposta.create(nome: 'Extensão anormal (descerebração)', pontuacao: 2, parametro_id: parametro3ecg.id)
Resposta.create(nome: 'Flexão anormal (decorticação)', pontuacao: 3, parametro_id: parametro3ecg.id)
Resposta.create(nome: 'Movimento de retirada', pontuacao: 4, parametro_id: parametro3ecg.id)
Resposta.create(nome: 'Localiza à dor', pontuacao: 5, parametro_id: parametro3ecg.id)
Resposta.create(nome: 'Obedece comandos', pontuacao: 6, parametro_id: parametro3ecg.id)

# Escala Ecod
ecod = Escala.create(nome: 'Escala  comportamental objetiva de dor em crianças')

# Interpretaçoes da escala Ecod
Interpretacao.create(nome: 'Observar frequencia dos sintomas', valor_minimo: 0, valor_maximo: 10, escala_id: ecod.id)

# Parametros da escala Ecod
parametro1ecod = Parametro.create(nome: 'Choro', escala_id: ecod.id)
parametro2ecod = Parametro.create(nome: 'Atitude psicológica', escala_id: ecod.id)
parametro3ecod = Parametro.create(nome: 'Respiração', escala_id: ecod.id)
parametro4ecod = Parametro.create(nome: 'Tono postural', escala_id: ecod.id)
parametro5ecod = Parametro.create(nome: 'Observação facial', escala_id: ecod.id)

# Respostas dos parametros da escala Ecod
Resposta.create(nome: 'Ausente', pontuacao: 0, parametro_id: parametro1ecod.id)
Resposta.create(nome: 'Consolável ou Intermitente', pontuacao: 1, parametro_id: parametro1ecod.id)
Resposta.create(nome: 'Inconsolável ou contínuo', pontuacao: 2, parametro_id: parametro1ecod.id)

Resposta.create(nome: 'Dormindo ou tranquilo', pontuacao: 0, parametro_id: parametro2ecod.id)
Resposta.create(nome: 'Vigilante ou inquieto', pontuacao: 1, parametro_id: parametro2ecod.id)
Resposta.create(nome: 'Agitado ou histérico', pontuacao: 2, parametro_id: parametro2ecod.id)

Resposta.create(nome: 'Ritmica e pausada', pontuacao: 0, parametro_id: parametro3ecod.id)
Resposta.create(nome: 'Rápida e superficial', pontuacao: 1, parametro_id: parametro3ecod.id)
Resposta.create(nome: 'Arrítmica', pontuacao: 2, parametro_id: parametro3ecod.id)

Resposta.create(nome: 'Relaxado', pontuacao: 0, parametro_id: parametro4ecod.id)
Resposta.create(nome: 'Indiferente', pontuacao: 1, parametro_id: parametro4ecod.id)
Resposta.create(nome: 'Contraído', pontuacao: 2, parametro_id: parametro4ecod.id)

Resposta.create(nome: 'Contente ou dormindo', pontuacao: 0, parametro_id: parametro5ecod.id)
Resposta.create(nome: 'Sério', pontuacao: 1, parametro_id: parametro5ecod.id)
Resposta.create(nome: 'Trite', pontuacao: 2, parametro_id: parametro5ecod.id)