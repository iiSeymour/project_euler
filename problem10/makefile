FC = nagfor
FCFLAGS = -O4 -colour -s -double
PROGRAMS = problem10

all: $(PROGRAMS)

%: %.o
	$(FC) $(FCFLAGS) -o $@ $^ primes.o
	rm *.o

%.o: %.f90
	$(FC) $(FCFLAGS) -c $<
	$(FC) $(FCFLAGS) -c ../util/primes.f90

clean:
	rm -f *~ $(PROGRAMS)
