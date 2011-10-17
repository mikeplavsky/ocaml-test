Program=program

${Program}: gcd.cmo
	ocamlc -o ${Program} gcd.cmo

gcd.cmo: gcd.ml
	ocamlc -g -c gcd.ml

clean:
	rm -rf *.cmo ${Program} 

