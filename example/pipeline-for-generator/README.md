# Ejemplo basico de pipeline para lanzar un sh

- La variable de muestra esta generada dentro de la config del proyecto
  en el apartado de /settings/ci_cd

- Se ejecuta la pipeline manualmente y pasando el valor de ese parametro

- Se bloquea el stage/job de la pipeline de la siguiente manera, usando la condicion
  when: manual

- Otra opción para que no salte la pipeline es agregar en el push: git push -o ci.skip (pero esto sería complicado de implementar)
https://stackoverflow.com/questions/51431537/disable-pipeline-for-every-commit-in-gitlab-and-only-run-it-on-open-merge-reques
