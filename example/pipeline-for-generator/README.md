# Ejemplo basico de pipeline para lanzar un sh

- La variable de muestra esta generada dentro de la config del proyecto
  en el apartado de /settings/ci_cd

- Se ejecuta la pipeline manualmente y pasando el valor de ese parametro

- Se bloquea el stage/job de la pipeline de la siguiente manera, usando la condicion
  when: manual

- Otra opción para que no salte la pipeline es agregar en el push: git push -o ci.skip (pero esto sería complicado de implementar)
https://docs.gitlab.com/ee/ci/yaml/#skipping-jobs
git push --push-option=ci.skip    # using git 2.10+
git push -o ci.skip               # using git 2.18+
