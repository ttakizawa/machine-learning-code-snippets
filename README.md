# machine leaning code snippets

Repository of machine learning code snippets

## Launch nodebook

```
docker compose build
docker compose up -d
```

access http://localhost:8888/tree

## Add library

launch container

```
docker compose build
docker compose up -d poetry 
```

edit `./pyproject/pyproject.toml`

update lock

```
docker compose exec poetry poetry update
```
