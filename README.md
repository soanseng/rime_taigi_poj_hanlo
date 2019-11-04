# rime_taigi_poj_hanlo
台語POJ漢羅輸入法 for Rime iăn-jín

```
docker build . -t rime
docker run --rm \
  -v `pwd`/BDD:/rime_taigi_poj_hanlo/BDD \
  -v `pwd`/taigi_pojhanlo_sujiphoat:/rime_taigi_poj_hanlo/taigi_pojhanlo_sujiphoat \
  -e PYTHONPATH="/rime_taigi_poj_hanlo/BDD" \
  rime behave --no-capture /rime_taigi_poj_hanlo/BDD/features
```
