# sThis file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#  user = User.find_by_email 'gen.reyest@gmail.com'
# user.github_user = 'greyes193'
# user.save
if !(Role.find_by_name 'Super' and Role.find_by_name 'Admin')
	["Super","Admin"].each do |admRole|
		Role.create!(name: admRole)
	end
end

if !Admin.find_by_email 'xavier@trely.co'
	a = Role.find_by_name 'Super'
	Admin.create!(
		email: 'xavier@trely.co', 
		password: 'password', 
		password_confirmation: 'password', 
		name: "Xavier",
		last_name: "Gonzalez",
		country: "Venezuela",
		city: "Caracas",
		phone: "04143165636",
		gender: "Masculino",
		avatar: File.new("#{Rails.root}/app/assets/images/xavier.jpg"),
		role_id: a.id)
end

if !(Category.find_by_name 'Diseño' and Category.find_by_name 'Redacción' and Category.find_by_name 'Paquetes')
	["Diseño","Redacción","Paquetes"].each do |category|
		Category.create!(name: category)
	end
end

if !(Bundle.find_by_name 'Pack 1' and Bundle.find_by_name 'Pack 2')
	["Pack 1","Pack 2"].each do |bundle|
		Bundle.create!(name: bundle)
	end
end

i = 0
["DISEÑADORES & CREATIVOS",
	"DISEÑADORES DE SOCIAL MEDIA",
	"DISEÑO DE INFOGRAFIA",
	"ADAPTACION DE UN DISEÑO"].each do |service|
	a = Category.find_by_name 'Diseño'
	if !Service.find_by_name service

		img = ['iconografia_servicios_art.svg',
		 'iconografia_servicios_social.svg',
		  'iconografia_servicios_infografia.svg',
		  'iconografia_servicios_adaptacion.svg']
		imghover = ['iconografia_servicios_hover_art.svg',
		 'iconografia_servicios_hover_social.svg',
		 'iconografia_servicios_hover_infografia.svg',
		 'iconografia_servicios_hover_adaptacion.svg']
		Service.create!(name: service,
		img: File.new("#{Rails.root}/app/assets/images/#{img[i]}"),
		imghover: File.new("#{Rails.root}/app/assets/images/#{imghover[i]}"),
		category_id: a.id)
		i += 1
	end
end

i = 0
["REDACCION",
	"COMMUNITY MANAGERS"].each do |service|
	a = Category.find_by_name 'Redacción'
	if !Service.find_by_name service
		img = ['iconografia_servicios_redaccion.svg',
		 'iconografia_servicios_community.svg']
		imghover = ['iconografia_servicios_hover_redaccion.svg',
			'iconografia_servicios_hover_community.svg']
		Service.create!(name: service,
		img: File.new("#{Rails.root}/app/assets/images/#{img[i]}"),
		imghover: File.new("#{Rails.root}/app/assets/images/#{imghover[i]}"),
		category_id: a.id)
		i += 1
	end
end

i = 0
["WEB DEVELOPERS",
	"MOBILE DEVELOPERS"].each do |service|
	a = Category.find_by_name 'Paquetes'
	if !Service.find_by_name service
		img = ['iconografia_servicios_web.svg','iconografia_servicios_mobile.svg']
		imghover = ['iconografia_servicios_hover_web.svg','iconografia_servicios_hover_mobile.svg']
		Service.create!(name: service,
		img: File.new("#{Rails.root}/app/assets/images/#{img[i]}"),
		imghover: File.new("#{Rails.root}/app/assets/images/#{imghover[i]}"),
		category_id: a.id)
		i += 1
	end
end

["DISEÑADORES & CREATIVOS",
	"DISEÑADORES DE SOCIAL MEDIA",
	"DISEÑO DE INFOGRAFIA",
	"ADAPTACION DE UN DISEÑO",
	"REDACCION",
	"COMMUNITY MANAGERS",
	"WEB DEVELOPERS",
	"MOBILE DEVELOPERS"].each do |page|
	a = Service.find_by_name page
	url = page.gsub(/,*\s+/,'-').downcase!
		if url['Ñ']
			url['Ñ'] = 'ñ'
		end
	if !Page.find_by_url url
		Page.create!(url: url,
	 title: page,
	 subtitle: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium, quos fugiat soluta! Nostrum labore atque consequuntur culpa vero non.",
	 paso_one: "paso numero 1",
	 paso_two: "paso numero 2",
	 paso_tree: "paso numero 3",
	 visibility: true,
	 service_id: a.id)
	end
end

puts '*** ¡listo la carga de datos! ***'

