FC = nagfor
FCFLAGS = -O4 -colour -s -double
PROGRAMS = problem12

all: $(PROGRAMS)

%: %.o
	$(FC) $(FCFLAGS) -o $@ $^ factors.o
	rm *.o

%.o: %.f90
	$(FC) $(FCFLAGS) -c $<
	$(FC) $(FCFLAGS) -c ../util/factors.f90

clean:
	rm -f *~ $(PROGRAMS)
