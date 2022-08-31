# msmtp

# usage

## Preparation
Copy msmtprc.template to msmtprc

Update From/User/Password

(And server if not using ionos)

## Run

```
cat << EOF > message
Subject: This is a test

Test Test (don't forget the empty line after subject)

EOF
cat message | docker run --rm -i --name msmtp -v $PWD/msmtprc:/etc/msmtprc ghcr.io/fanmovies999/msmtp:latest recipient@domain.com
```

OR

```
cat << EOF | docker run --rm -i --name msmtp -v $PWD/msmtprc:/etc/msmtprc ghcr.io/fanmovies999/msmtp:latest recipient@domain.com
Subject: This is a test

Test Test (don't forget the empty line after subject)

EOF
```


