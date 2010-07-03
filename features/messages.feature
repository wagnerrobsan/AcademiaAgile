Feature: Envio de Mensagens
  In order to communicate with other students
  Users can send messages to the group

  Scenario: Load Message Form
    Given I am on the root page
    When I follow "Enviar Mensagem"
    Then I should be on the new message page
    And I should see "Enviar nova mensagem"

   Scenario: Create new message
     Given I am on the new message page
     And I fill in the following:
     |Mensagem|globalcode|
     |Titulo|GC|
     When I press "Enviar mensagem"
     Then I should be on the root page
     And I should see "Mensagem enviada com sucesso"

  Scenario: List messages
    Given I have a message with title "Minha mensagem" and text "Texto"
    And I have a message with title "Minha mensagem 2" and text "Texto 2"
    When I go to the messages page
    Then I should see "Ultimas mensagens"
    And I should see "Minha mensagem"
    And I should see "Minha mensagem 2"
