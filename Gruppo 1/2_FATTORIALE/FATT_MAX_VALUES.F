	PROGRAM FATT_MAX_VALUES

	INTEGER F_I, N_MAX
	REAL *8 F_64
	REAL *4 F_32

	 
	F_64 = 1
	F_32 = 1
	F_I = 1

	DO I=1, N_MAX

	IF (I .EQ. 1) THEN
		WRITE(*,*) 1, 1
	ELSE 
		F_I = F_I * I
		!F_32 = F_32 * I
		!F_64 = F_64 * I
		WRITE(*,*) I, F_I, F_64
		
	END IF
	END DO

	END  

	SUBROUTINE FATT_INT(F_I)

      

      END SUBROUTINE 

	