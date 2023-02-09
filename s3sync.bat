sourceFolder=$1
s3bucket=$2

resultCLIText=$(aws s3 sync $sourceFolder s3://$s3bucket)

while [ "$resultCLIText" != "" ]
do
    echo $resultCLIText
    echo "run again to clear all."
    resultCLIText=$(aws s3 sync $sourceFolder s3://$s3bucket)
done

echo 'completed'