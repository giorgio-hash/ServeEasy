# ServeEasy

Software Gestionale per il managing di un'attività di ristorazione con design a microservizi.

Componenti attualmente in beta:
 * [GestioneComanda](https://github.com/giorgio-hash/GestioneComanda.git): schedulazione algoritmica degli ordini tramite struttura a priorità;
 * [GestioneCucina](https://github.com/giorgio-hash/GestioneCucina.git): gestione a code verso le postazioni di cucina, classificate per ingrediente;
 * [GestioneCliente](https://github.com/giorgio-hash/GestioneCliente.git): gestione di comande (intesa come collezione dei singoli ordini) ed ordini verso il dispositivo cliente.

### Setup del deployment

Prima di procedere è necessario possedere Docker Desktop (Windows, Mac) o Docker Engine (Linux, Mac).

Si può clonare questa repository con git, oppure è sufficiente creare una cartella dove copiare la cartella db/ ed il file docker-compose.yaml di questa repository, ricreando la seguente struttura:

```
cartella/
└───db/
│   └───initial-data-and-schema.sql 
└───docker-compose.yaml
```

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

Ai fini della demo è stato incluso un file reset_db.bat per eliminare i dati del database, <b>da usare solamente prima o dopo l'avvio della demo</b> .
![pagina1](./img/pagina1.jpg)
![pagina2](./img/npagina2.jpg)
