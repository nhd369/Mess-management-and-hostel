echo "What is the starting date for fee payemnt"
     read date
     echo "what is the current semester"
     read sem
     for i in GarnetA GarnetB Agate Aquamarine Amber Zircon Lapice Ruby OpalA OpalB OpalC OpalD OpalE OpalF GarnetC Beryl;
      do
      echo "Number of hostel rooms"
      read N
        for j in $(seq 1 $N);
        do
           for k in {1 2};
           do
              DATEtime= sed -n '"$sem"p' datetime.txt
              if ["$DATEtime" = "$date"];
              then
                 NAME= sed -n '1p' userdetails.txt
                 echo $NAME >> $i/announcement.txt
               fi
           done
     done
     #proceeding towards updating the ones who did not pay the fees
     echo "when is the last date to pay the fees"
     read lastDate
      for i in GarnetA GarnetB Agate Aquamarine Amber Zircon Lapice Ruby OpalA OpalB OpalC OpalD OpalE OpalF GarnetC Beryl;
      do
      echo "Number of hostel rooms"
      read N
      for j in $(seq 1 $N);
      do
          DATEtime= sed -n '"$sem"p' datetime.txt
          if ["$DATEtime"="$date"];
           then
              NAME= sed -n '1p' userdetails.txt
              echo $NAME >> $i/announcement.txt
           fi
       done
     done
