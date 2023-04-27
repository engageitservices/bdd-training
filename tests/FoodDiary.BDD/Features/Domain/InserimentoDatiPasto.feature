Feature: Inserimenti dati del pasto

Consente l'inserimento dei dati di un pasto all'utente
per il futuro salvataggio.

Scenario: Caricamento del form
    Given esiste il componente FdNewMeal di inserimento dei dati del pasto
    Then contiene la proprietà meal di tipo Meal
    Then contiene il pulsante di aggiunta di un nuovo piatto
    Then contiene il pulsante di salvataggio del pasto

# file Meal.feature
Scenario: Il tipo Meal
    Then contiene Date
    Then il tipo Meal contiene Kind
    Then il tipo Meal contiene Time (optional)
    Then il tipo Meal contiene la lista dei Course
    Then il tipo Meal contiene Annotations (optional)

# file Course.feature
Scenario: Il tipo Course
    Then il tipo Course contiene
        | Field       | Type         | Required | Description |
        | Name        | string       | true     |             |
        | Ingredients | Ingredient[] | true     |             |
        | Annotations | string       | false    |             |

Scenario: Tutti i dati sono stati inseriti

Scenario: Inserimento dati testuali

Scenario: Pulsante di aggiunta di un piatto
    Then apre il form di inserimento di un piatto
