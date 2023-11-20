rule APT29_Ransom : PDF {
	meta:
        author= "Ali Can Gönüllü"
        description= "APT29 Ransomware Rule"
	strings:
        $string1= {52 09 56 63 50 9C 7A F1 93 6B 9E 9D 5E D5 25 20 A5 B8 33 5C 42 D6 6A 4E 24 95 12 84}
        $string2= {43 32 97 E6 83 AF AA 52 0B EB 9A 38 1F D2 B5 11 D6 D5 6A D0 F8 58 48 8F 69 E2 B2 35}
        $string3= {E1 61 E8 06 3E E8 0A 77 42 32 97 BA 01 D4 87 7A 50 17 EE 80 DB A1 0E D4 86 24 EE 4D}
	condition:
        3 of ($string*)
}

rule APT29_Ransom2 {
	meta:
        author= "Ali Can Gönüllü"
        description= "CVE-2023-38831 Rule"
	strings:
        $pk = {2F 50 4B}
	condition:
        any of them
}
