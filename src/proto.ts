import { join } from "path";
import { loadPackageDefinition } from "grpc";
import { loadSync } from "@grpc/proto-loader";

const protosPath = join(__dirname, "../chatting-service.proto");

const packageDefinition = loadSync(protosPath);


export const chattingServiceProto: any = loadPackageDefinition(packageDefinition).Chatting;

export const ChattingServiceImplementation = chattingServiceProto.ChattingService;

