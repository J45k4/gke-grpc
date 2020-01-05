import { ChattingServiceImplementation } from "./proto";
import { credentials } from "grpc";

(async function () {
    const client = new ChattingServiceImplementation("chatting.koodinikkarit.com:443", credentials.createSsl());

    const chat = client.createChatConnection();

    chat.write({
        channel: "testChannel",
        mesage: "Hello"
    });

}())