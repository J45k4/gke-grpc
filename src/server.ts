import { chattingServiceProto } from "./proto";
import { Server, ServerCredentials } from "grpc";


const server = new Server();

server.addService(
    chattingServiceProto.ChattingService.service, {
    createChatConnection: (call) => {
        console.log("new chat connection");

        call.on("end", () => {
            console.log("chatconnection ended");
        })
    }
}
)

const bindedPort = server.bind("0.0.0.0:4200", ServerCredentials.createInsecure());

console.log("server binded to port", bindedPort);

server.start();