#! /bin/bash

echo "First file:"
cat tst.tst
echo ""
echo "Second file:"
cat tst2.tst
echo ""
echo "Same lines for both files:"
grep -f tst.tst tst2.tst
echo "For sorted files: "
comm -1 -2 tst.txt tst2.txt
echo "____________________________"
echo "Uniq lines in first file:"
grep -f tst2.tst -v tst.tst
diff -e tst2.tst tst.tst
echo "For sorted files: "
comm -2 -3 tst.txt tst2.txt

echo "______________________"
echo "Uniq lines in second file:"
grep -f tst.tst -v tst2.tst
# -v -f
diff -e tst.tst tst2.tst
echo "For sorted files:"
comm -1 -3 tst.txt tst2.txt
echo "_____________________"

#diff tst.tst tst2.tst





#sort tst.tst && sort tst2.tst | comm -3 tst.tst tst2.tst
