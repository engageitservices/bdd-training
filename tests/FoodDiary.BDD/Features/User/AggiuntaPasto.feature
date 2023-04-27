Feature: Aggiunta di un pasto
In quanto persona a dieta
Voglio poter aggiungere dei pasti al diario alimentare
Per poterlo consultare in un secondo momento

Scenario: Pagina di aggiunta del pasto
    Given ho aperto la pagina iniziale del diario
    Then conterrà il pulsante di aggiunta di un nuovo pasto

Scenario: Apertura della pagina inserimento dei dati del pasto
    Given contiene il pulsante di aggiunta di un nuovo pasto
    When clicco sul pulsante nuovo pasto
    Then si visualizza la form di inserimento dati

Scenario: Inserimento dei dati del pasto
    Given un ingrediente ha i seguenti attributi
        | Campi                 |
        | Nome dell'ingrediente |
        | Quantità              |
        | UoM                   |
    Given un piatto contiene i seguenti campi
        | Campi                                           |
        | Nome del piatto                                 |
        | Lista ingredienti del piatto                    |
        | Pulsante di inserimento di un nuovo ingrediente |
        | Note                                            |
    Given sì è aperto il form di inserimento dati contenente i campi
        | Campi                                      |
        | Data                                       |
        | Tipo di pasto                              |
        | Orario indicativo del pasto                |
        | Pulsante di inserimento di un nuovo piatto |
        | Lista dei piatti del pasto                 |
        | Note                                       |
    When inserisco i dettagli del nuovo pasto
    Then si abilita il pulsante di salvataggio

Scenario: Salvataggio del nuovo pasto
    Given il pulsante del salvataggio è attivo
    When premo sul pulsante
    Then il pasto viene salvato
