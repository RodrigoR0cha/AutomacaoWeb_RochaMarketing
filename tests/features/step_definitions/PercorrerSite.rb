Quando('eu acessar o site') do
   visit 'https://rochamarketing.com.br/'
   sleep(5)
end
  
Entao('eu verifico se o mesmo está disponivel') do
   expect(page).to have_current_path('https://rochamarketing.com.br/')
end

Quando('eu acessar a seção de serviços') do
    visit '/#servicos'
    sleep(5)
end
  
Entao('eu verifico se o efeito sanfona está funcionando') do
    click_on('Desenvolvimento e Hospedagem')
    sleep(3)
    click_on('Testes de Softwares')
    sleep(3) 
end
  
Quando('eu acessar a seção de portfólio') do
    visit '/#portfolio'
    sleep(5)
end
  
Entao('eu clico em alguns para visualizar em outra aba') do
    janela = open_new_window
    find('.eael-cf-1').hover.click
    sleep(7)
    janela.close
    sleep(5)
    find('.eael-cf-4').hover.click
    sleep(7)
    janela.close
    sleep(5)
end

Quando('eu acessar a seção do blog') do
    visit '/#blog'
    sleep(5)
end
  
Entao('eu verifico se vou ter acesso a alguma postagem') do
    click_on('Leia Mais')
    sleep(2)      
end
  
Quando('eu preencher o formulário') do
    visit '/#contato'
    fill_in(id: 'wpforms-656-field_1', with: 'Ciclano Beltrano Fulano')
    fill_in(id: 'wpforms-656-field_2', with: '(11)912341234')
    fill_in(id: 'wpforms-656-field_3', with: 'teste@gmail.com')
    sleep(8)
end
  
Entao('eu verifico se foi preenchido com sucesso') do
    click_on('Enviar')
    sleep(5)
end

Quando('eu aperta o botão de aceitar tudo, verifico se funcionou') do
    visit 'https://rochamarketing.com.br/'
    within('#cookie-law-info-bar') do
    find('#wt-cli-accept-all-btn').click
    sleep(3)
   end
end

Quando('eu clicar no icone do whatsApp, verifico se teve acesso a API em outra janela') do
    visit 'https://rochamarketing.com.br/'
    within('.no-animations') do
    find('.ctc-analytics').click
    sleep(5)
   end 
end
  
  

