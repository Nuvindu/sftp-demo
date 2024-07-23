import ballerina/ftp;
import ballerina/io;

configurable string host = ?;
configurable int port = ?;
configurable string username = ?;
configurable string password = ?;

public function main() returns error? {
    ftp:Client|error fileUploader = new ({
        protocol: ftp:SFTP,
        host,
        port,
        auth: {
            credentials: {
                username,
                password
            }
        }
    });
    io:println("Client Initialization: ", fileUploader);
    if fileUploader is error {
        return fileUploader;
    }
    string fileName = "test";
    stream<io:Block, io:Error?> fileStream = check io:fileReadBlocksAsStream(string `./${fileName}.txt`, 1024);
    ftp:Error? put = fileUploader->put(string `/${fileName}.txt`, fileStream);
    io:println("File uploading status: ", put);
    check fileStream.close();
}
