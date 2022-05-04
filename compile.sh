rm build/nft-item-mystery-box-code.fif
rm build/nft-collection-editable-mystery-box-code.fif

func -o build/nft-item-mystery-box-code.fif -SPA stdlib.fc params.fc op-codes.fc nft-item-mystery-box.fc
func -o build/nft-collection-editable-mystery-box-code.fif -SPA stdlib.fc params.fc op-codes.fc nft-collection-editable-mystery-box.fc

fift -s build/print-hex.fif
