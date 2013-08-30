FC = nagfor
FCFLAGS = -O4 -colour -s -double
PROGRAMS = problem11

all: $(PROGRAMS)

%: %.o
	$(FC) $(FCFLAGS) -o $@ $^

%.o: %.f90
	$(FC) $(FCFLAGS) -c $<

clean:
	rm -f *~ $(PROGRAMS)
