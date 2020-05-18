rm -rf ~/.qonicod
rm -rf ~/.qonicocli
qonicod init node1 --chain-id qonico
qonicocli config chain-id qonico
qonicocli config output json
qonicocli config indent true
qonicocli config trust-node true
qonicocli config keyring-backend test
qonicocli keys add qonicogenesis
sed -i 's/stake/qon/gi' ~/.qonicod/config/genesis.json 
qonicod add-genesis-account $(qonicocli keys show qonicogenesis -a) 1000000000000000000qon
qonicod gentx --name qonicogenesis --amount 1000000qon --keyring-backend test
qonicod collect-gentxs
