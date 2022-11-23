@aberturaconta
Feature: Abertura de Conta
 
 Background:  
 Given que o usuario acesse a url "https://www.original.com.br/"
 And selecionar o botao ok
 And selecionar o botao abrir conta
       
@pf 
Scenario: Scenario: Abertura de conta pessoa fisica

And selecionar o botao abrir conta para voce
#When preencher o formulario de abertura de conta
And preencher o campo com o nome "<nome>"
And preencher o campo com o email "<email>"
And preencher o campo com o cpf "<cpf>"
And preencher o campo com o telefone "<telefone>"
And selecionar o botao quero ser cliente
Then  sera exibido o texto falta pouco

         Examples:   
                 |nome   |email                |cpf          |telefone    |
                 |Samuel |teste@teste.com.br   |62304207081  |11111111111 |
                 |Joao   |teste@teste.com.br   |14919447060  |11111111111 | 
   
   
 
@pj
Scenario: Scenario: Abertura de conta pessoa juridica
And selecionar o botão abrir conta para sua empresa
And abrir conta pessoa unica
When preencher o formulario de abertura de conta
And selecionar o botao enviar
  