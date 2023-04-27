Feature: Salvataggio del nuovo pasto

I dati vengono trasmessi al server per il salvataggio quando
viene cliccato il pulsante «Salva nuovo pasto».

Scenario: Dati da trasferire
    Then contiene i dati del tipo Meal
    # { meal: { Date: "" } }
    # --> { Date: "" }

Scenario: Invio dei dati
    Given i dati del pasto
    When l'azione di salvataggio viene eseguita
    Then invia i dati a "POST /pasto"


Scenario: Gestione della risposta dati non validi

Scenario: Gestione della risposta dati validi

