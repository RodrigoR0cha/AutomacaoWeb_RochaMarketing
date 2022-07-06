Quando('eu acessar o site') do
   visit 'https://rochamarketing.com.br/'
   sleep(5)
end
  
Entao('eu verifico se o mesmo está disponivel') do
   expect(page).to have_current_path('https://rochamarketing.com.br/')
end
  
Quando('eu acessar a seção de serviços') do
    visit '/#servicos'
    click_on('Serviços')
    sleep(5)
end
  
Entao('eu verifico se o efeito sanfona está funcionando') do
    click_on('Desenvolvimento e Hospedagem')
    sleep(5)
    click_on('Testes de Softwares')
    sleep(5) 
end
  
Quando('eu acessar a seção de portfólio') do
    visit '/#portfolio'
    click_on('Portfólio')
    sleep(5)
end
  
Entao('eu verifico se tenho algum exemplo de portfólio') do
    pending # apenas constatando um resultado
end  

Quando('eu acessar a seção do blog') do
    visit '/#blog'
    click_on('Blog')
    sleep(5)
end
  
Entao('eu verifico se vou ter acesso a alguma postagem') do
    click_on('Leia Mais')
    sleep(2)      
end
  
Quando('eu preencher o formulário') do
    visit '/#contato'
    click_on('Contato')
    fill_in(id: 'wpforms-656-field_1', with: 'Rodrigo Araújo Rocha')
    fill_in(id: 'wpforms-656-field_2', with: '(11)93485-3137')
    fill_in(id: 'wpforms-656-field_3', with: 'rorigoar@gmail.com')
    sleep(5)
end
  
Entao('eu verifico se foi preenchido com sucesso') do
    click_on('Enviar')
    sleep(5)
end

