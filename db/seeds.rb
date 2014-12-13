# encoding: UTF-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#ShirtSize.destroy_all
#ShirtType.destroy_all
#ShirtSize.create([{ name: 'P' }, { name: 'M' }, { name: 'G' }, { name: 'GG' }, { name: 'GGG' }, { name: 'GGGG' }])
#ShirtType.create([{ name: 'MASCULINA' }, { name: 'BABYLOOK' }])

#Instrument.create([{ name: 'AGOGÔ'}, 
#                   { name: 'CAIXA' },
#                   { name: 'CHOCALHO' },
#                   { name: 'CUÍCA' },
#                   { name: 'MARCAÇÃO' },
#                   { name: 'RECO-RECO' },
#                   { name: 'REPICAIXA' },
#                   { name: 'REPIQUE' },
#                   { name: 'TAMBORIM' },
#                   { name: 'TANTAM' }
#                 ])

#User.destroy_all 

#Branch.create([{ name: 'Baqueta - CE'}, 
#                { name: 'Baqueta - RJ' }])

#user = User.where(:email => ['sandrodacuica.@hotmail.com', 'claricinha_nunes@hotmail.com', 'farguedes@terra.com.br', 'brunobc4b@gmail.com', 'liviabarrocas1205@gmail.com'])
#user = User.where(:email => ['raquelfontenele@gmail.com'])

#Instrument.create([{ name: 'HARMONIA'}])

#inst = Instrument.where(:name => 'HARMONIA')

#pedro-parente1@hotmail.com pedropcneto@hotmail.com 
User.where(:instrument_id => [7]).update_all(:instrument_id: 2)

#user = User.where(:email => ['gustavo@blocodobaqueta.com.br'])
#user.destroy_all


