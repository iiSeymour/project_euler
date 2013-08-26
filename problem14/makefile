FC = nagfor
FCFLAGS = -O4 -colour -s -double
PROGRAMS = problem14

all: $(PROGRAMS)

%: %.o
	$(FC) $(FCFLAGS) -o $@ $^
	rm *.o

%.o: %.f90
	$(FC) $(FCFLAGS) -c $<

clean:
	rm -f *~ $(PROGRAMS)
