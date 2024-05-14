# ServeEasy

Software Gestionale per il managing di un'attività di ristorazione con design a microservizi.

Componenti attualmente in beta:
 * [serveeasy_gateway](https://github.com/giorgio-hash/serveeasy_gateway.git): gateway per comunicazione unificata col sistema;
 * [GestioneComanda](https://github.com/giorgio-hash/GestioneComanda.git): schedulazione algoritmica degli ordini tramite struttura a priorità;
 * [GestioneCucina](https://github.com/giorgio-hash/GestioneCucina.git): gestione a code verso le postazioni di cucina, classificate per ingrediente;
 * [GestioneCliente](https://github.com/giorgio-hash/GestioneCliente.git): gestione di comande (intesa come collezione dei singoli ordini) ed ordini verso il dispositivo cliente.

Algoritmo attualmente in beta: [indexMinPQ buffer producer-consumer pattern per schedulazione ordini](https://github.com/giorgio-hash/algoritmo.git).

### Setup del deployment (demo)

Prima di procedere è necessario possedere Docker Desktop (Windows, Mac) o Docker Engine (Linux, Mac).

Si può clonare questa repository con git, oppure è sufficiente creare una cartella dove copiare la cartella db/ ed il file docker-compose.yaml di questa repository, ricreando la seguente struttura:

```
cartella/
└───db/
│   └───initial-data-and-schema.sql 
└───docker-compose.yaml
```
In particolare, initial-data-and-schema.sql contiene schema SQL e dati di prova ai fini della demo.

### Deploy del sistema a microservizi utilizzando Docker Compose 

Per scaricare le dipendenze ed avviare la rete di microservizi, aprire una riga di comando nella cartella contenente il <i>docker-compose.yaml</i> e digitare il comando:
```shell
docker compose up
```
![demo gif](./img/demo1.gif)

Durante il caricamento, verifica la salute della rete. Apri una riga di comando e digita:
```shell
docker ps
```
Puoi interagire col sistema non appena vedi solo "healthy" di fianco ai servizi interessati.
![demo img](./img/demo2.png)
Per disattivare la rete e rimuovere i container si può procedere con la combinazione tasti <kbd>Ctrl</kbd> + <kbd>C</kbd> oppure, con una riga di comando nella cartella contenente il <i>docker-compose.yaml</i> digitare il comando:
```shell
docker compose down
```
![demo gif 2](./img/demo2.gif)

Se invece si volessero mantenere i container per riattivarli successivamente si può utilizzare il comando
```shell
docker compose stop
```

<br>

### Testing della demo
Di seguito vengono riportate delle chiamate di prova per il collaudo. Le chiamate documentate e pubblicate su Postman sono disponibili [qui](https://documenter.getpostman.com/view/20761533/2sA3JKcN1D).

_aggiornamento_: ora che il docker-compose.yml è dotato del componente gateway, tutte le chiamate vanno redirette verso 8083. Le chiamate di test verso GestioneComanda non sono direttamente disponibili.
Togliere i commenti dal docker-compose.yml se si vuole ripristinare il port-binding verso localhost:8082, localhost:8081 e localhost:8080.

Ai fini della demo è stato incluso un file reset_db.bat per eliminare i dati del database, <b>da usare solamente prima o dopo l'avvio della demo</b> .
![pagina1](./img/pagina1.jpg)
![pagina2](./img/npagina2.jpg)
