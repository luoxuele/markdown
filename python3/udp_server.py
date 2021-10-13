import socket

def main():
    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    # udp_socket.sendto("hello",("192.168.10.1",6666))
    udp_socket.bind(('',6666))
    print(udp_socket.__str__())

    while True:
        message, clientAddress = udp_socket.recvfrom(2048)
        modifiedMessage = message.decode().upper()
        udp_socket.sendto(modifiedMessage.encode(), clientAddress)


    udp_socket.close()

if __name__ == "__main__":
    main()