 for i in GarnetA GarnetB Agate Aquamarine Amber Zircon Lapice Ruby OpalA OpalB OpalC OpalD OpalE OpalF GarnetC Beryl
    do
       echo "How many rooms in hostel $i"
       read n
       for j in $(seq 1 $n);
       do
          for k in {1 2};
            do
            echo "Under which do you want to update the fees"
            echo " 1) Tution Fee
                   2) Hostel Rent
                   3) Service Charges
                   4) Mess Fee"
            read value
            case $value in
            1)
                 fee_type_paid="Tution Fee"
                 echo "Enter tution fee paid"
                 cat >> $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/TutionFee.txt
                 ;;
            2)
                 fee_type_paid="Hostel Rent"
                 echo "Enter Hostel rent paid"
                 cat >> $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/HostelRent.txt
                 ;;
            3)
                 fee_type_paid="Service Charges"
                 echo "enter service charges paid"
                 cat >> $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/ServiceCharges.txt
                 ;;
            4)
                 fee_type_paid="Mess Fee"
                 echo "Enter mess fee paid"
                 cat >> $i/roomno"$j"/"$i"_"$j"_"$k"/fees.txt/MessFee.txt
                 ;;
               
            
            esac
            date >> datetime.txt
            done
        done
    done
