Feature: Cadastro de Usuários
  In order to keep the contact data of all students from Academia do Agile
  Users can register themselves on the system

  Scenario: Access Register form
    Given I am on the root page
    When I follow "Registre-se"
    Then I should see "Cadastro de Usuários"
    And I should see "Nome"
    And I should see "Email"
    And I should see "Turma"
    And I should see "Sobre mim"

  Scenario: Add new user
    Given I am on the new user page
    When I fill in the following:
      |Nome|Felipe Rodrigues|
      |Email|felipero@gmail.com|
      |Turma|AGT1|
      |Sobre mim|Minha descrição|
    And I press "Cadastrar"
    Then I should see "Usuario cadastrado com sucesso"
    And I am on the root page

      