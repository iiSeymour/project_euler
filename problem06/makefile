FC = nagfor
FCFLAGS = -O4 -colour
PROGRAMS = problem06

all: $(PROGRAMS)

%: %.o
	$(FC) $(FCFLAGS) -o $@ $^

%.o: %.f90
	$(FC) $(FCFLAGS) -c $<

clean:
	rm -f *~ $(PROGRAMS)
