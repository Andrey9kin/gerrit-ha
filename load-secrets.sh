set -e

su-exec ${GERRIT_USER} git config -f ${GERRIT_SITE}/etc/gerrit.config database.username $(cat /run/secrets/POSTGRES_USER | tr -d '\n')
su-exec ${GERRIT_USER} git config -f ${GERRIT_SITE}/etc/secure.config database.password $(cat /run/secrets/POSTGRES_PASSWORD | tr -d '\n')
