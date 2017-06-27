### Description
This documentation includes what I use a lot but forget a lot too.
### Contents
1. [Generate random code in shell (python code)](https://github.com/esevan/env/tree/master#generate-random-code)
### Generate random code
```
python -c "import string; import random; print(\"etcd-cluster-\" + ''.join(random.SystemRandom().choice(string.ascii_lowercase + string.digits) for _ in range(5)))"
```
