FC = nagfor
FCFLAGS = -O4 -colour -s
PROGRAMS = problem02

all: $(PROGRAMS)

%: %.o
	$(FC) $(FCFLAGS) -o $@ $^

%.o: %.f90
	$(FC) $(FCFLAGS) -c $<

clean:
	rm -f *~ $(PROGRAMS)
