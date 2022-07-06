# User_api

## To Install and Run

Make sure to have docker and docker compose installed

In the root directory of the project:

1. run `docker-compose build`
2. run `docker-compose up`
3. Ctrl + C out of docker and run:

- `docker-compose run web rails db:migrate`
- `docker-compose run web rails db:seed`

4. run `docker-compose up`
5. API can be accessed from localhost:3000
