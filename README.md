# Usage 

##### set compose volume, config file and migrations folder
```yaml
    volumes:
      - ${PWD}/migrations:/migrations
```

##### outer link 
   if you need link to another compose's service container, create outer_net, 
   and set external property.
   set compose network and use it
   ```yaml 
        networks:
          output_net:
    networks:
     output_net:
       external: true
   ```
   
### command 

##### help
```bash
$ docker-compose run --rm migration
```

##### create
```bash
$ docker-compose run --rm migration create -ext sql -dir ./migrations $@
```