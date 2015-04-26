(set! geometry-lattice (make lattice (size 16 16 16)))

(set! geometry (list
                (make block (center 1 0) (size no-size 0.5 infinity)
                      (material metal))))

(set! sources (list
               (make source
                 (src (make continuous-src (frequency 1)))
                 (component Ez)
                 (center -5 0))))


(set! pml-layers (list (make pml (thickness 1.0))))

(set! resolution 10)

(run-until 200
           (at-beginning output-epsilon)
           (at-end output-efield-z))

