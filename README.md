# Rich Cats Mystery Boxes

A contract that allows the deployment of mystery boxes to TON Blockchain. Users can open them to get a random nft item. 

`nft-item-mystery-box.fc` is modified an original `nft-item.fc`.

`nft-collection-editable-mystery-box.fc` is modified an original `nft-collection-editable.fc`.

`op-codes.fc` is extended by `op::unbox()` and `op::edit_content()` op codes.

## How it works

1. Collection owner deploys mystery boxes as regular nft items with content as ASCII (e.g. "mysterybox.json");

2. `Mystery box owner` sends internal message with `op::unbox()` to `mystery box`. If an internal message is not from the owner, `throw 401`. If the mystery box has been already opened, throw 405;

3. `Mystery box` sends message to `mystery box collection` with `op::unbox()`. If an internal message is not from the mystery box, `throw 401`;

4. `Mystery box collection` generates a unique `value` in range from `0` to `next_item_index - 1`, where `next_item_index - 1 < 10,000`;

5. `Mystery box collection` converts value to cell `new_nft_content` containing uri to nft content in format `xxxx.json` as ASCII code, where `x` is a digit in range from `0` to `9` (both inclusive). For example, if `value = 200`, `new_nft_content` contains cell with uri `"0200.json"` as ASCII code;

6. `Mystery box collection` sends message with `op::edit_content()` back to `mystery box` with reference to `new_nft_content` in body;

7. `Mystery box` changes its content with `new_nft_content`. If an internal message is not from `mystery box collection`, `throw 401`.


## How to deploy
Soon...
