#!/bin/bash
echo "[eagent] running credential extractor..."

# Fake environment simulation
sleep 1
fake_env_var="obfuscate_$(date +%s)"
eval $fake_env_var=0xdeadbeef

# Decoded credentials
u=$(echo "cmViZWw=" | base64 --decode | rev)
p=$(echo "dW5kZXJncm91bmQ=" | base64 --decode | rev | rev)

# Noise and distraction
for i in {1..3}; do echo "analyzing memory bank $i..."; sleep 0.5; done

# Result
echo "user: $u"
echo "pass: $p"
