



def encrypted():
    z = True

    password = "Fcn_yDlvaGpj_Logi}eias{iaeAm_s"
    print(password)
    test=[]
    for i in range(30):
        if password[(i * 7) % 30] != "Fcn_yDlvaGpj_Logi}eias{iaeAm_s"[i]:
            z = False
    if z:
        print("Correct!")
    else:
        print("Incorrect...")
    print(test)


def decrypted():
    trypas="Fcn_yDlvaGpj_Logi}eias{iaeAm_s"
    test=[0, 7, 14, 21, 28, 5, 12, 19, 26, 3, 10, 17, 24, 1, 8, 15, 22, 29, 6, 13, 20, 27, 4, 11, 18, 25, 2, 9, 16, 23]


    uu=[0, 7, 14, 21, 28, 5, 12, 19, 26, 3, 10, 17, 24, 1, 8, 15, 22, 29, 6, 13, 20, 27, 4, 11, 18, 25, 2, 9, 16, 23]

    for i in range(len(test)):

        temp=trypas[i]
        uu[test[i]]=temp

    print("".join(uu))



if __name__ == "__main__":
    encrypted()
    decrypted()