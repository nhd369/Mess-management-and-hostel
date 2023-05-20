echo "Hello welcome to the college server"
echo "Run alias signIn to log in/create your account to access this alias (ignore if already created)"
sudo useradd HAD
sudo usermod -aG sudo HAD
  #creating hostel directory,hostel admin account,student directories, student accounts and update them
  for i in GarnetA GarnetB Agate Aquamarine Amber Zircon Lapice Ruby OpalA OpalB OpalC OpalD OpalE OpalF GarnetC Beryl
  do
   mkdir $i
   chmod u+rwx $i
   echo "How many rooms in hostel $i"
   read n
   touch $i/announcement.txt
   chmod ug+rwx,o-wx $i/announcement.txt
   touch $i/feeDefaulters.txt
   chmod ug+rwx,o-wx $i/feeDefaulters.txt
   for j in $(seq 1 $1);
   do
      mkdir $i/roomno"$j"
      sudo useradd $i
      chmod ug+rwx,o-rwx $i/roomno"$j"
      for k in {1 2};
      do
          mkdir  $i/roomno"$j"/"$i"_"$j"_"$k"
          chmod u+rwx,go-wx $i/roomno"$j"/"$i"_"$j"_"$k"
          sudo useradd "$i"_"$j"_"$k"
          chmod u+rwx,o-x "$i"_"$j"_"$k"
          touch  $i/roomno"$j"/"$i"_"$j"_"$k"/userdetails.txt
          chmod ugo+rwx $i/roomno"$j"/"$i"_"$j"_"$k"/userdetails.txt
          touch  $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt
          touch  $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/TutionFee.txt
          chmod u+rwx,go-rwx $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/TutionFee.txt
          touch  $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/HostelRent.txt
          chmod u+rwx,go-rwx $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/HostelRent.txt
          touch  $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/ServiceCharges.txt
          chmod u+rwx,go-rwx $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/ServiceCharges.txt
          touch  $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/MessFee.txt
          chmod u+rwx,go-rwx $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/MessFee.txt
          
        done
     done
     for j in $(seq 1 $n);
     do
     echo "Enter the information to the user detailsfile of the students of this hostel"
      for k in {1 2};
      do
          #entering values to the userdetails.txt
         for h in Name RollNo Department Year $i Month;
         do
            echo "Enter your $h"
            
            cat >> $i/roomno"$j"/"$i"_"$j"_"$k"/userdetails.txt
        done
      done
      
echo "Do you want to logout"
read inputgs
if ["$inputgs" == "YES"]
then
logout
fi
