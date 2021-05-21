BEGIN{
    printf "%40s %7s \n", "Họ tên", "Điểm thi"
}

{ printf "%40s %7s \n", $2, $3 }

